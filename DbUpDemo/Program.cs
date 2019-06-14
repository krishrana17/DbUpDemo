using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Reflection;
using System.Threading.Tasks;
using DbUp;
using DbUp.Support;

namespace DbUpDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["PublishToTargetDB"].ConnectionString;

            var runner = DeployChanges
                .To
                .SqlDatabase(connectionString)
                .WithScriptsEmbeddedInAssembly
                 (
                    Assembly.GetExecutingAssembly(),
                    (string script) => script.StartsWith("DbUpDemo.Scripts._2019_06_15")
                  )
                .LogToConsole()
                .Build();

            var result = runner.PerformUpgrade();

            if (!result.Successful)
            {
                Console.BackgroundColor = ConsoleColor.Red;
                Console.WriteLine(result.Error);
                Console.ResetColor();
            }
            else
            {
                Console.WriteLine("Scripts deployed successfully");
            }
            Console.ReadLine();
        }
    }
}
