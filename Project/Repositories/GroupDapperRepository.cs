using Dapper;
using Project.DTOs;
using Project.Models;
using Project.Repositories.Base;
using Project.Repositories.Interfaces;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Project.Repositories;

public class GroupDapperRepository : RepositoryBase, IGroupRepository
{
    public GroupDapperRepository() : base() { }

    public IEnumerable<GroupGetDTO> GetAll()
    {
        return this.sqlConnection.Query<GroupGetDTO>(sql: @"SELECT g.[Name], tg.StudentsCount, t.Fullname as TeacherName
                                                            FROM Groups as g
                                                            JOIN Teachers as t ON g.TeacherId = t.Id
                                                            JOIN  (
	                                                            SELECT GroupId, count(GroupId) as StudentsCount
	                                                            FROM Groups as g
	                                                            JOIN Students as s ON g.Id = s.GroupId
	                                                            GROUP BY GroupId
                                                            ) as tg on tg.GroupId = g.Id"
        );
    }
}
