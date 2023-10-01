using Dapper;
using Project.Models;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Project.Repositories;

public class StudentDapperRepository
{
    private const string connectionString = $"Server=localhost;Database=AcademyDb;Trusted_Connection=True;TrustServerCertificate=True";
    private readonly SqlConnection sqlConnection;

    public StudentDapperRepository()
    {
        this.sqlConnection = new SqlConnection(connectionString);
        this.sqlConnection.Open();
    }

    public IEnumerable<Student> GetAll()
    {
        return this.sqlConnection.Query<Student>(sql: "select * from Students");
    }
}
