.class Ljwtc/android/chess/play/PlayActivity$3;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/PlayActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 158
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$3;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 161
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$3;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$400(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/android/chess/services/GameApi;->nextMove()V

    return-void
.end method
