using Project.Models;
using System.Collections.Generic;

namespace Project.Repositories.Interfaces;

public interface IGroupsRepository
{
    IEnumerable<Group> GetAll();
}
