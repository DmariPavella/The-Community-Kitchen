Module TheCommunityKitchen
    Sub Main()
        Dim strName As String
        Dim strAddress As String
        Dim strPhone As String
        Dim strDOB As String
        Dim strFamilySize As String
 
        Console.WriteLine("Welcome to the Community Kitchen registration form.")
        Console.WriteLine("Please enter your information below:")
 
        Console.Write("Name: ")
        strName = Console.ReadLine()
 
        Console.Write("Address: ")
        strAddress = Console.ReadLine()
 
        Console.Write("Phone number: ")
        strPhone = Console.ReadLine()
 
        Console.Write("Date of Birth (MM/DD/YYYY): ")
        strDOB = Console.ReadLine()
 
        Console.Write("Family size: ")
        strFamilySize = Console.ReadLine()
 
        Console.WriteLine()
        Console.WriteLine("Thank you for registering. Your information is as follows:")
        Console.WriteLine("Name: " & strName)
        Console.WriteLine("Address: " & strAddress)
        Console.WriteLine("Phone Number: " & strPhone)
        Console.WriteLine("Date of Birth: " & strDOB)
        Console.WriteLine("Family Size: " & strFamilySize)
        Console.WriteLine("You may now proceed to the Community Kitchen.")
 
        Console.ReadLine()
    End Sub
End Module