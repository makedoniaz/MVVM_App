using Dapper;
using Project.Models;
using Project.Repositories.Interfaces;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Project.Repositories;

public class GroupDapperRepository : IGroupRepository
{
    private const string connectionString = $"Server=localhost;Database=AcademyDb;Trusted_Connection=True;TrustServerCertificate=True";
    private readonly SqlConnection sqlConnection;

    public GroupDapperRepository()
    {
        this.sqlConnection = new SqlConnection(connectionString);
        this.sqlConnection.Open();
    }

    public IEnumerable<Group> GetAll()
    {
        return this.sqlConnection.Query<Group>(sql: "select * from Groups");
    }
}
