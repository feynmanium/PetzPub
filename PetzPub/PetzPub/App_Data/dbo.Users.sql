CREATE TABLE [dbo].[Users] (
    [userId]    INT          NOT NULL,
    [username]  VARCHAR (50) NOT NULL,
    [password]  NCHAR (10)   NOT NULL,
    [firstName] VARCHAR (50) NOT NULL,
    [lastName]  VARCHAR (50) NOT NULL,
    [email]     VARCHAR (50) NOT NULL,
    [address]   VARCHAR (50) NOT NULL,
    [createdDate] DATETIME NULL, 
    [lastLoginDate] DATETIME NULL, 
    PRIMARY KEY CLUSTERED ([userId] ASC)
);

