.class Ljwtc/android/chess/play/PlayActivity$10;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/PlayActivity;->showChess960Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/play/PlayActivity;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/PlayActivity;)V
    .locals 0

    .line 612
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$10;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 616
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$10;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$1600(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Ljwtc/android/chess/services/GameApi;->newGameRandomFischer(I)I

    .line 617
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$10;->this$0:Ljwtc/android/chess/play/PlayActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljwtc/android/chess/play/PlayActivity;->access$1502(Ljwtc/android/chess/play/PlayActivity;J)J

    return-void
.end method
