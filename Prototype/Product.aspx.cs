using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace Prototype
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {
            var ttPrice = FormView1.FindControl("PriceLabel") as Label;
            var itemPrice = ttPrice.Text;
            var findName = FormView1.FindControl("ProductNameLabel") as Label;
            string itemName = findName.Text;

            decimal postagePackagingCost = 5.00m;
            decimal productPrice = decimal.Parse(itemPrice);
            int quantityOfProduct = int.Parse(DDLQuantity.SelectedValue);
            decimal subTotal = (quantityOfProduct * productPrice);
            decimal total = subTotal + postagePackagingCost;

            // Authenticate with PayPal
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            //Get APIContext Object
            var apiContext = new APIContext(accessToken);

            var productItem = new Item();
            productItem.name = itemName;
            productItem.currency = "USD";
            productItem.price = productPrice.ToString();
            productItem.sku = "PRO1"; //sku is stock keeping unit - e.g. manufacturer code
            productItem.quantity = quantityOfProduct.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackagingCost.ToString();
            transactionDetails.subtotal = subTotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "USD";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your order of Products";
            transaction.invoice_number = Guid.NewGuid().ToString();//this should ideally be the id of a record storing the order
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + HttpContext.Current.Request.ApplicationPath + "/Default.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + HttpContext.Current.Request.ApplicationPath + "/CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    //found the appropriate link, send the user there
                    Response.Redirect(link.href);
                }
            }
        }
    }
}