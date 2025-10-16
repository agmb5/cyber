.class Ljwtc/android/chess/GamesListActivity$9;
.super Ljava/lang/Object;
.source "GamesListActivity.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/GamesListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/GamesListActivity;


# direct methods
.method constructor <init>(Ljwtc/android/chess/GamesListActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity$9;->this$0:Ljwtc/android/chess/GamesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 2

    const-string v0, "rating"

    .line 168
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 170
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result p2

    .line 171
    check-cast p1, Landroid/widget/RatingBar;

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
