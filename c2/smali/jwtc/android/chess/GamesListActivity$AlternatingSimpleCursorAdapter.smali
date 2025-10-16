.class Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "GamesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/GamesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlternatingSimpleCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/GamesListActivity;


# direct methods
.method public constructor <init>(Ljwtc/android/chess/GamesListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6

    .line 264
    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;->this$0:Ljwtc/android/chess/GamesListActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 265
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method
