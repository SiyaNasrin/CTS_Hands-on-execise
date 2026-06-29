class Book {
    int bookId;
    String title;
    String author;

    Book(int id, String title, String author) {
        bookId = id;
        this.title = title;
        this.author = author;
    }
}

public class LibrarySearch {

    static int linear(Book books[], String title) {
        for(int i=0;i<books.length;i++) {
            if(books[i].title.equals(title))
                return i;
        }
        return -1;
    }

    static int binary(Book books[], String title) {

        int low=0, high=books.length-1;

        while(low<=high) {
            int mid=(low+high)/2;

            int res =
                books[mid].title.compareTo(title);

            if(res==0)
                return mid;
            else if(res<0)
                low=mid+1;
            else
                high=mid-1;
        }
        return -1;
    }

    public static void main(String[] args) {

        Book books[] = {
            new Book(1,"C","Dennis"),
            new Book(2,"Java","James"),
            new Book(3,"Python","Guido")
        };

        System.out.println(linear(books,"Java"));
    }
}