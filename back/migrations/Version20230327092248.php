<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230327092248 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE messenger_messages (id BIGINT AUTO_INCREMENT NOT NULL, body LONGTEXT NOT NULL, headers LONGTEXT NOT NULL, queue_name VARCHAR(190) NOT NULL, created_at DATETIME NOT NULL, available_at DATETIME NOT NULL, delivered_at DATETIME DEFAULT NULL, INDEX IDX_75EA56E0FB7336F0 (queue_name), INDEX IDX_75EA56E0E3BD61CE (available_at), INDEX IDX_75EA56E016BA31DB (delivered_at), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('DROP TABLE test_Author');
        $this->addSql('DROP TABLE test_BiblioUser');
        $this->addSql('DROP TABLE test_Book');
        $this->addSql('DROP TABLE test_BooksLike');
        $this->addSql('DROP TABLE test_Category');
        $this->addSql('DROP TABLE test_Editor');
        $this->addSql('DROP TABLE test_isWritten');
        $this->addSql('DROP TABLE test_Loan');
        $this->addSql('DROP TABLE test_isFriend');
        $this->addSql('DROP TABLE test_PublishedYear');
        $this->addSql('DROP TABLE test_Languages');
        $this->addSql('DROP TABLE test_belongs');
        $this->addSql('ALTER TABLE Author CHANGE id_author id_author INT AUTO_INCREMENT NOT NULL, CHANGE name name VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE isWritten RENAME INDEX id_book TO IDX_589FF1740C5BF33');
        $this->addSql('ALTER TABLE BiblioUser CHANGE id_user id_user INT AUTO_INCREMENT NOT NULL, CHANGE surname surname VARCHAR(255) DEFAULT NULL, CHANGE password password VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE isFriend RENAME INDEX idx_9486a6bb6b3ca4b TO IDX_932AA38D6B3CA4B');
        $this->addSql('ALTER TABLE isFriend RENAME INDEX id_user_1 TO IDX_932AA38D4518E88D');
        $this->addSql('ALTER TABLE Book CHANGE id_book id_book INT AUTO_INCREMENT NOT NULL, CHANGE id_language id_language INT DEFAULT NULL, CHANGE title title VARCHAR(255) DEFAULT NULL, CHANGE cover cover VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE belongs RENAME INDEX id_category TO IDX_47025A8E5697F554');
        $this->addSql('DROP INDEX label ON Category');
        $this->addSql('ALTER TABLE Category CHANGE id_category id_category INT AUTO_INCREMENT NOT NULL, CHANGE label label VARCHAR(255) DEFAULT NULL');
        $this->addSql('DROP INDEX label ON Editor');
        $this->addSql('ALTER TABLE Editor CHANGE id_editor id_editor INT AUTO_INCREMENT NOT NULL, CHANGE label label VARCHAR(255) DEFAULT NULL');
        $this->addSql('DROP INDEX label ON Languages');
        $this->addSql('ALTER TABLE Languages CHANGE id_language id_language INT AUTO_INCREMENT NOT NULL, CHANGE label label VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE Loan CHANGE id_loan id_loan INT AUTO_INCREMENT NOT NULL, CHANGE id_user id_user INT DEFAULT NULL, CHANGE id_book id_book INT DEFAULT NULL, CHANGE loan_date loan_date DATE DEFAULT NULL');
        $this->addSql('DROP INDEX published_year ON PublishedYear');
        $this->addSql('ALTER TABLE PublishedYear CHANGE id_year id_year INT AUTO_INCREMENT NOT NULL, CHANGE published_year published_year VARCHAR(50) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE test_Author (id_author INT NOT NULL, name VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, PRIMARY KEY(id_author)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_BiblioUser (id_user INT NOT NULL, surname VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, name VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_unicode_ci`, password VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, p_picture VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_unicode_ci`, PRIMARY KEY(id_user)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_Book (id_book INT NOT NULL, title VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, cover VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, description VARCHAR(1000) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_unicode_ci`, number_of_pages INT DEFAULT NULL, acquiring_date DATE NOT NULL, id_year INT DEFAULT NULL, id_editor INT DEFAULT NULL, id_language INT NOT NULL, INDEX id_editor (id_editor), INDEX id_language (id_language), INDEX id_year (id_year), PRIMARY KEY(id_book)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_BooksLike (id_book INT NOT NULL, id_user INT NOT NULL, INDEX id_user (id_user), PRIMARY KEY(id_book, id_user)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_Category (id_category INT NOT NULL, label VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, UNIQUE INDEX label (label), PRIMARY KEY(id_category)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_Editor (id_editor INT NOT NULL, label VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, UNIQUE INDEX label (label), PRIMARY KEY(id_editor)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_isWritten (id_author INT NOT NULL, id_book INT NOT NULL, INDEX id_book (id_book), PRIMARY KEY(id_author, id_book)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_Loan (id_loan INT NOT NULL, loan_date DATE NOT NULL, return_date DATE DEFAULT NULL, id_user INT NOT NULL, id_book INT NOT NULL, INDEX id_book (id_book), INDEX id_user (id_user), PRIMARY KEY(id_loan)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_isFriend (id_user INT NOT NULL, id_user_1 INT NOT NULL, INDEX id_user_1 (id_user_1), PRIMARY KEY(id_user, id_user_1)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_PublishedYear (id_year INT NOT NULL, published_year VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, UNIQUE INDEX published_year (published_year), PRIMARY KEY(id_year)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_Languages (id_language INT NOT NULL, label VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, UNIQUE INDEX label (label), PRIMARY KEY(id_language)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE test_belongs (id_book INT NOT NULL, id_category INT NOT NULL, INDEX id_category (id_category), PRIMARY KEY(id_book, id_category)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('DROP TABLE messenger_messages');
        $this->addSql('ALTER TABLE Editor CHANGE id_editor id_editor INT NOT NULL, CHANGE label label VARCHAR(255) NOT NULL');
        $this->addSql('CREATE UNIQUE INDEX label ON Editor (label)');
        $this->addSql('ALTER TABLE Author CHANGE id_author id_author INT NOT NULL, CHANGE name name VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE isWritten RENAME INDEX idx_589ff1740c5bf33 TO id_book');
        $this->addSql('ALTER TABLE isfriend RENAME INDEX idx_932aa38d4518e88d TO id_user_1');
        $this->addSql('ALTER TABLE isfriend RENAME INDEX idx_932aa38d6b3ca4b TO IDX_9486A6BB6B3CA4B');
        $this->addSql('ALTER TABLE belongs RENAME INDEX idx_47025a8e5697f554 TO id_category');
        $this->addSql('ALTER TABLE PublishedYear CHANGE id_year id_year INT NOT NULL, CHANGE published_year published_year VARCHAR(50) NOT NULL');
        $this->addSql('CREATE UNIQUE INDEX published_year ON PublishedYear (published_year)');
        $this->addSql('ALTER TABLE Loan CHANGE id_loan id_loan INT NOT NULL, CHANGE id_user id_user INT NOT NULL, CHANGE id_book id_book INT NOT NULL, CHANGE loan_date loan_date DATE NOT NULL');
        $this->addSql('ALTER TABLE Languages CHANGE id_language id_language INT NOT NULL, CHANGE label label VARCHAR(255) NOT NULL');
        $this->addSql('CREATE UNIQUE INDEX label ON Languages (label)');
        $this->addSql('ALTER TABLE Category CHANGE id_category id_category INT NOT NULL, CHANGE label label VARCHAR(255) NOT NULL');
        $this->addSql('CREATE UNIQUE INDEX label ON Category (label)');
        $this->addSql('ALTER TABLE BiblioUser CHANGE id_user id_user INT NOT NULL, CHANGE surname surname VARCHAR(255) NOT NULL, CHANGE password password VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE Book CHANGE id_book id_book INT NOT NULL, CHANGE id_language id_language INT NOT NULL, CHANGE title title VARCHAR(255) NOT NULL, CHANGE cover cover VARCHAR(255) NOT NULL');
    }
}
