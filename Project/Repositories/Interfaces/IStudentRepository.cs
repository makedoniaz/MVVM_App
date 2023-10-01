using Project.Models;
using System.Collections.Generic;

namespace Project.Repositories.Interfaces;

public interface IStudentRepository
{
    IEnumerable<Student> GetAll();
}
