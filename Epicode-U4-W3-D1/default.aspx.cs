using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epicode_U4_W3_D1
{
    public partial class _default__ : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e){}

        protected void CarsDropDownList_SelectedIndexChanged(Object sender, EventArgs e)
        {
            CarImage.ImageUrl = $"~/Content/Macchine/{CarsDropDownList.SelectedItem.Value}";
            nome.InnerText = $"Hai slezionato: {CarsDropDownList.SelectedItem.Text} ";
        }

        protected void Calcola(object sender, EventArgs e)
        {
            int carPrice = Int32.Parse(CarsDropDownList.SelectedItem.Attributes["price"]);
            int CCPrice = Int32.Parse(GaranziaDropDownList.SelectedItem.Value);
            int accessoriesPrice = 0;
            foreach (ListItem accessorio in Accessori.Items)
                if (accessorio.Selected)
                    accessoriesPrice += Int32.Parse(accessorio.Value);
            
            prezzoVettura.InnerText =    $"Prezzo vettura:    {carPrice}";
            prezzoCilindrata.InnerText = $"Prezzo cilindrata: {CCPrice}";
            prezzoAccessori.InnerText =  $"Prezzo accessori:  {accessoriesPrice}";

            prezzoTotale.InnerText = $"Totale: {carPrice + CCPrice + accessoriesPrice}";
        }
    }
}