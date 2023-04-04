-- Requetes pour tester le nombre de tuple de chaque table de notre base 
SELECT COUNT(*) as nbAuthor FROM Author
SELECT COUNT(*) as nbBelongs FROM belongs
SELECT COUNT(*) as nbBiblioUser FROM BiblioUser
SELECT COUNT(*) as nbBook FROM Book
SELECT COUNT(*) as nbCategory FROM Category
SELECT COUNT(*) as nbEditor FROM Editor
SELECT COUNT(*) as nbIsFriend FROM isFriend
SELECT COUNT(*) as nbIsWritten FROM isWritten
SELECT COUNT(*) as nbLanguages FROM Languages
SELECT COUNT(*) as nbLoan FROM Loan
SELECT COUNT(*) as nbPublishedYear FROM PublishedYear
SELECT COUNT(*) as nbBooksLike FROM BooksLike