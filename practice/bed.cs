using System;
using System.Collections.Generic;
using System.Text;

namespace practice
{
    public class bed: Ibed
    {
        public int b_id , days ;
        public string roomtype;

        public void displaybed() 
        {
            Console.WriteLine("Enter bed id:");
            b_id = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter days ");
            days = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter roomtype (AC/Non AC)");
            roomtype = Console.ReadLine();

            Console.WriteLine("bed id : " + b_id + "no of days : " + days + " room type : " + roomtype);
        }

    }
}
