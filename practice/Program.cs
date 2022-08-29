using System;

namespace practice
{
    class Program

    {
        static void Main(string[] args)
        {
            string answer = "Y";
            for(;answer.ToUpper ()== "Y";)
            { 

                Console.WriteLine("Press 1 for Enter Doctor details");
                Console.WriteLine("Press 2 for Patient details");
                Console.WriteLine("Press 3 for bed details");

                int n = int.Parse(Console.ReadLine());

                switch(n)
                {
                    case 1:
                    doctor doc = new doctor();
                    doc.display();
                    break;
                    case 2:
                    patient pat = new patient();
                    pat.patientdetails();
                    break;
                    case 3:
                    bed be = new bed();
                    be.displaybed();
                    break;
                }
                Console.WriteLine("Do you want to continue : Y/N");
                answer = Console.ReadLine();
            }
        }
    }
}
