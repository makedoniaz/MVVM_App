using Project.DTOs;
using System.Collections.Generic;

namespace Project.Repositories.Interfaces;

public interface IGroupRepository
{
    IEnumerable<GroupGetDTO> GetAll();
}
