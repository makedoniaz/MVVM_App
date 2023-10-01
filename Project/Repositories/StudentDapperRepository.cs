using Dapper;
using Project.Models;
using Project.Repositories.Base;
using Project.Repositories.Interfaces;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Project.Repositories;

public class StudentDapperRepository : RepositoryBase, IStudentRepository
{
    public StudentDapperRepository() : base() { }

    public IEnumerable<Student> GetAll()
    {
        return this.sqlConnection.Query<Student>(sql: "select * from Students");
    }
}
