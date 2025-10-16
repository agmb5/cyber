.class public Ljwtc/android/chess/helpers/MyPGNProvider;
.super Ljwtc/chess/PGNProvider;
.source "MyPGNProvider.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "jwtc.android.chess.helpers.MyPGNProvider"

    .line 11
    sput-object v0, Ljwtc/android/chess/helpers/MyPGNProvider;->AUTHORITY:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljwtc/android/chess/helpers/MyPGNProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/games"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Ljwtc/android/chess/helpers/MyPGNProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 15
    sget-object v0, Ljwtc/android/chess/helpers/MyPGNProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Ljwtc/android/chess/helpers/MyPGNProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "games"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    sget-object v0, Ljwtc/android/chess/helpers/MyPGNProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Ljwtc/android/chess/helpers/MyPGNProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "games/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljwtc/chess/PGNProvider;-><init>()V

    return-void
.end method
