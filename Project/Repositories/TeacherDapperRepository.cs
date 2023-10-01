using Dapper;
using Project.Models;
using Project.Repositories.Base;
using Project.Repositories.Interfaces;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Project.Repositories;

public class TeacherDapperRepository : RepositoryBase, ITeacherRepository
{
    public TeacherDapperRepository() : base() { }

    public IEnumerable<Teacher> GetAll()
    {
        return this.sqlConnection.Query<Teacher>(sql: "select * from Teachers");
    }
}
