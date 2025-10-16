.class Ljwtc/android/chess/GamesListActivity$6;
.super Ljava/lang/Object;
.source "GamesListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 102
    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity$6;->this$0:Ljwtc/android/chess/GamesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object p1, p0, Ljwtc/android/chess/GamesListActivity$6;->this$0:Ljwtc/android/chess/GamesListActivity;

    iget-object p1, p1, Ljwtc/android/chess/GamesListActivity;->_sortBy:Ljava/lang/String;

    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Ljwtc/android/chess/GamesListActivity$6;->this$0:Ljwtc/android/chess/GamesListActivity;

    invoke-static {p1}, Ljwtc/android/chess/GamesListActivity;->access$000(Ljwtc/android/chess/GamesListActivity;)V

    .line 107
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/GamesListActivity$6;->this$0:Ljwtc/android/chess/GamesListActivity;

    iput-object v0, p1, Ljwtc/android/chess/GamesListActivity;->_sortBy:Ljava/lang/String;

    .line 108
    iget-object p1, p0, Ljwtc/android/chess/GamesListActivity$6;->this$0:Ljwtc/android/chess/GamesListActivity;

    invoke-static {p1}, Ljwtc/android/chess/GamesListActivity;->access$100(Ljwtc/android/chess/GamesListActivity;)V

    return-void
.end method
