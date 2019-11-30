using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Browser;

namespace SilverlightJSTest
{
    public partial class Page : UserControl
    {
        public Page()
        {
            InitializeComponent();
            HtmlPage.RegisterScriptableObject("Page", this);
        }

        private void myButton_Click(object sender, RoutedEventArgs e)
        {
            string result = HtmlPage.Window.Invoke("getText", new string[] { "myButton" }).ToString();
           
            setText(result);
        }

        [ScriptableMember]
        public void setText(string str)
        {
            myTB.Text = str;
        }

        [ScriptableMember]
        public string getText()
        {
            return myTB.Text;
        }
        
    }
}
