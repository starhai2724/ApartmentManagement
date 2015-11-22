using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Apartment
/// </summary>
namespace models
{

    public class Apartment
    {
        int idApartment { get; set; }
        string nameApartment { get; set; }
        string typeApartment { get; set; }
        string size { get; set; }
        double priceSale { get; set; }
        double priceRent { get; set; }
        int statusApartment { get; set; }
        string dateCreate { get; set; }
        string userCreate { get; set; }
        string dateUpdate { get; set; }
        string userUpdate { get; set; }



        public Apartment()
        {

        }
    }
}