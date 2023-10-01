using System.Data.SqlClient;

namespace Project.Repositories.Base;

public class RepositoryBase
{
    protected const string connectionString = $"Server=localhost;Database=AcademyDb;Trusted_Connection=True;TrustServerCertificate=True";
    protected readonly SqlConnection sqlConnection;

    public RepositoryBase()
    {
        this.sqlConnection = new SqlConnection(connectionString);
        this.sqlConnection.Open();
    }
}
