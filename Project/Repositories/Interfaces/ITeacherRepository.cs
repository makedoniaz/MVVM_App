using Project.Models;
using System.Collections.Generic;

namespace Project.Repositories.Interfaces;

public interface ITeacherRepository
{
    IEnumerable<Teacher> GetAll();
}
