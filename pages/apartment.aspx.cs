using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ApartmentManagement.Models;
public partial class pages_apartment : System.Web.UI.Page
{
    private List<Apartment> _lstApartment;
    public List<Apartment> lstApartment { get { return _lstApartment; } }

    ApartmentDAO apartmentDBO = new ApartmentDAO();
    Apartment apartment;

    protected void Page_Load(object sender, EventArgs e)
    {
        //hien thi danh sach Apartment
        loadApartments();
        //hien thi Apartment dang dc sua
        if (null != Request.QueryString["idEdit"])
        {
           loadApartment();
           
        }
        //delete
        if (null != Request.QueryString["idDelete"])
        {
            apartmentDBO.deleteApartment(Convert.ToInt16(Request.QueryString["idDelete"]));
            loadApartments();

        }
        Response.Write("abc" + "     ");


    }


    protected void addApartment(object sender, EventArgs e)
    {

        string nameApartment = text_nameApartment.Value;
        double priceSale = Double.Parse(text_priceSale.Value);
        double priceRent = Double.Parse(text_priceRent.Value);
        string size = text_size.Value;
        DateTime dateTime = DateTime.Now;
        string dateCreate = dateTime.Day + "/" + dateTime.Month + "/" + dateTime.Year;
        string userCreate = "Nguyen";
        string typeApartment = type.Items[type.SelectedIndex].Value;
        string statusApartment = status.Items[status.SelectedIndex].Value;
        int numberStatus = int.Parse(statusApartment);
        apartment = new Apartment(10, nameApartment, typeApartment, size, priceSale, priceRent, numberStatus, dateCreate, userCreate, "", "");

        apartmentDBO.addAparment(apartment);
        clear();
        loadApartments();
    }

    public void loadApartments()
    {
        _lstApartment = ApartmentDAO.getApartments();


    }
    public void clear()
    {
        text_nameApartment.Value = "";
        text_priceSale.Value = "";
        text_priceRent.Value = "";
        text_size.Value = "";

    }
    public void loadApartment()
    {
        if (null != Request.QueryString["idEdit"])
        {

            int id = Convert.ToInt16(Request.QueryString["idEdit"]);
            apartment = ApartmentDAO.getApartment(id);
            if (null != apartment)
            {
                text_nameApartment.Value = apartment.nameApartment;
            }
        }
    }
    //edit apartment
    protected void editApartment(object sender, EventArgs e)
    {
        if (null != Request.QueryString["idEdit"])
        {

            string nameApartment = text_nameApartment.Value;
            //  Response.Write(nameApartment + "TEST");
            double priceSale = Double.Parse(text_priceSale.Value);
            //  Response.Write(priceSale + "TEST");
            double priceRent = Double.Parse(text_priceRent.Value);
            string size = text_size.Value;
            DateTime dateTime = DateTime.Now;
            string dateUpdate = dateTime.Day + "/" + dateTime.Month + "/" + dateTime.Year;
            string userUpdate = "Nguyen";
            string typeApartment = type.Items[type.SelectedIndex].Value;
            string statusApartment = status.Items[status.SelectedIndex].Value;
            int numberStatus = int.Parse(statusApartment);
            Apartment a = new Apartment(apartment.idApartment, nameApartment, typeApartment, size, priceSale, priceRent, numberStatus, apartment.dateCreate, apartment.userCreate, dateUpdate, userUpdate);
            apartmentDBO.updateApartment(a);
            clear();
            loadApartments();
        }


    }







}





