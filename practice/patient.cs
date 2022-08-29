using System;
using System.Collections.Generic;
using System.Text;

namespace practice
{
    public class patient : Ipatient
    {
        public int pid , age ;
        public string name = " ", problem = " ", mobileno =" ";

        public void patientdetails()
        {
            Console.WriteLine("Enter pid :");
            pid = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter patient name :");
            name = Console.ReadLine();
            Console.WriteLine("Enter patient age :");
            age = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter patient mob no :");
            mobileno = Console.ReadLine();
            Console.WriteLine("Enter patient problem :");
            problem = Console.ReadLine();

            Console.WriteLine("patient id : " + pid + "patient name: " + name + "patient age : " + age + "patient problem : " + problem + "patient mobile no : " + mobileno  );
        }
    }
}
