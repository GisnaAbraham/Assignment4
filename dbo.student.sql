CREATE TABLE [dbo].[student] (
    [stud_Id]  INT          IDENTITY (1, 1) NOT NULL,
    [name]     VARCHAR (50) NULL,
    [email]    VARCHAR (50) NULL,
    [phone]    VARCHAR (50) NULL,
    [gender]   VARCHAR (50) NULL,
    [courses]  VARCHAR (50) NULL,
    [dob]      VARCHAR (50) NULL,
    [state]    VARCHAR (50) NULL,
    [photo]    VARCHAR (50) NULL,
    [username] VARCHAR (50) NULL,
    [password] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([stud_Id] ASC)
);

