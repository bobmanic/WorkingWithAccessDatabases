# Working with MS-Access in VB.NET

[Complete article on Microsoft TechNet](https://social.technet.microsoft.com/wiki/contents/articles/52452.best-practices-working-with-ms-access-with-vb-net-part-1.aspx).

- Interfaces.
- Factory listeners.
- Base connection classes.
- Base exceptions class.
- Secure connections [repository](https://github.com/karenpayneoregon/SecureConnectionStringsVisualBasic).
- Adding records in batch.
- Utilizing transactions.
- Interacting with blob fields.
- Working with data readers.
- Master/Details relations.
- CRUD operations.
- DataGridView control considerations.
- Data binding control considerations.
- Database design.
- Searching.
- Query optimization for specific task.

### Requires
- Microsoft Visual Studio (written in 2017)

### Encryption notes
In this code sample MS-Access databases are encrypted. When working with your own database and connections fail, make sure to try the following.
- Open Access in exclusive mode.
- Under the file menu, options.
- Find client settings.
- At the bottom of settings.
- Change  Encryption Method at the bottom. Change to selection to Use Legacy Encryption.

Also there have been reports of encryption failing with passwords longer than 14 characters.