using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    /// <summary>
    /// MainWindow.xaml etkileşim mantığı
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        Productdal _productdal = new Productdal();
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            urunyukle();
        }

        private void urunyukle()
        {
             dtgProduct.ItemsSource=_productdal._TakeProduct();
        }

        private void btn_add_Click(object sender, RoutedEventArgs e)
        {
            _productdal.Add(new Product { Carsname = txtProductName.Text,
                CarsPrice = Convert.ToDecimal(txtProductPrice.Text),
                CustomerName=txtCustomerName.Text
               
            }) ;
                {
                 
            }
            urunyukle();
        }

        private void dtgProduct_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Product product = new Product();
            product = (Product)dtgProduct.SelectedItem;
            grd1.DataContext = product;

        }

        private void btn_clean_Click(object sender, RoutedEventArgs e)
        {
            txtId.Text = string.Empty;
            txtProductName.Text = string.Empty;
            txtCustomerName.Text = string.Empty;
            txtProductPrice.Text = string.Empty;
        }

        private void btn_update_Click(object sender, RoutedEventArgs e)
        {
            _productdal.Update(new Product {
                CustomerId=Convert.ToInt32(txtId.Text),
                Carsname = txtProductName.Text,
                CarsPrice = Convert.ToDecimal(txtProductPrice.Text),
                CustomerName=txtCustomerName.Text
            });
            urunyukle();
        }

        private void btn_delete_Click(object sender, RoutedEventArgs e)
        {
            int id = Convert.ToInt32(txtId.Text);
            _productdal.Delete(id);
            urunyukle();
        }
    }
}
