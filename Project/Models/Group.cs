﻿namespace Project.Models;

public class Group
{
    public int Id { get; set; }

    public required string Name { get; set; }

    public int TeacherId { get; set; }
}
