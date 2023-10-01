using Dapper;
using Project.Models;
using Project.Repositories.Base;
using Project.Repositories.Interfaces;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Project.Repositories;

public class GroupDapperRepository : RepositoryBase, IGroupRepository
{
    public GroupDapperRepository() : base() { }

    public IEnumerable<Group> GetAll()
    {
        return this.sqlConnection.Query<Group>(sql: "select * from Groups");
    }
}
