using Dapper;
using Project.DTOs;
using Project.Models;
using Project.Repositories.Base;
using Project.Repositories.Interfaces;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Project.Repositories;

public class StudentDapperRepository : RepositoryBase, IStudentRepository
{
    public StudentDapperRepository() : base() { }

    public IEnumerable<StudentGetDTO> GetAll()
    {
        return this.sqlConnection.Query<StudentGetDTO>(sql: @"select s.Id, s.Fullname, [Name] as GroupName
                                                        from Students as s
                                                        join Groups as g on s.GroupId = g.Id");
    }
}
