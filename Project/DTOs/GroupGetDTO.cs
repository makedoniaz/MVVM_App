namespace Project.DTOs;

public class GroupGetDTO
{
    public required string Name { get; set; }

    public int StudentsCount { get; set; }

    public string TeacherName { get; set; }
}
