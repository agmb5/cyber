.class public final Ljwtc/chess/PGNColumns;
.super Ljava/lang/Object;
.source "PGNColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final BLACK:Ljava/lang/String; = "black"

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.jwtc.pgn"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.jwtc.pgn"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final EVENT:Ljava/lang/String; = "event"

.field public static final PGN:Ljava/lang/String; = "pgn"

.field public static final RATING:Ljava/lang/String; = "rating"

.field public static final WHITE:Ljava/lang/String; = "white"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "_id"

    const-string v1, "white"

    const-string v2, "black"

    const-string v3, "pgn"

    const-string v4, "date"

    const-string v5, "rating"

    const-string v6, "event"

    .line 22
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljwtc/chess/PGNColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
