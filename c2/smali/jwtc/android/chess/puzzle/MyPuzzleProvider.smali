.class public Ljwtc/android/chess/puzzle/MyPuzzleProvider;
.super Ljwtc/chess/ChessPuzzleProvider;
.source "MyPuzzleProvider.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "jwtc.android.chess.puzzle.MyPuzzleProvider"

    .line 11
    sput-object v0, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->AUTHORITY:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/puzzles"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->CONTENT_URI_PUZZLES:Landroid/net/Uri;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/practices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->CONTENT_URI_PRACTICES:Landroid/net/Uri;

    .line 15
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 16
    sget-object v0, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "puzzles"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    sget-object v0, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "puzzles/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    sget-object v0, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "practices"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    sget-object v0, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "practices/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljwtc/chess/ChessPuzzleProvider;-><init>()V

    return-void
.end method
