using System;
using System.Collections.Generic;
using System.Text;

namespace practice
{
    public class doctor : Idoctor
    {
        int d_id , d_age ;
        string name = " ", speciality = " ", mobno =" "; 

        public void display()
        {
            Console.WriteLine("Enter Doc id");
            d_id = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter Doc name");
            name = Console.ReadLine();
            Console.WriteLine("Enter doc speciality");
            speciality = Console.ReadLine();
            Console.WriteLine("Enter doc age");
            d_age = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter doc mobile no.");
            mobno = Console.ReadLine();
            Console.WriteLine("doc name is : " + name + " mobileno is : " + mobno + " dr id is : " + d_id + " doc age is : " + d_age);
        }

    }
}
