.class Ljwtc/android/chess/GamesListActivity$8;
.super Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;
.source "GamesListActivity.java"


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
.method constructor <init>(Ljwtc/android/chess/GamesListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0

    .line 136
    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity$8;->this$0:Ljwtc/android/chess/GamesListActivity;

    invoke-direct/range {p0 .. p6}, Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;-><init>(Ljwtc/android/chess/GamesListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 144
    invoke-super {p0, p1, p2, p3}, Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Ljwtc/android/chess/GamesListActivity$8;->this$0:Ljwtc/android/chess/GamesListActivity;

    invoke-static {v0, p1, p2}, Ljwtc/android/chess/GamesListActivity;->access$200(Ljwtc/android/chess/GamesListActivity;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
