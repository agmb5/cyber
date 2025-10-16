.class Ljwtc/android/chess/play/PlayActivity$1$2;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/play/PlayActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljwtc/android/chess/play/PlayActivity$1;


# direct methods
.method constructor <init>(Ljwtc/android/chess/play/PlayActivity$1;)V
    .locals 0

    .line 123
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$1$2;->this$1:Ljwtc/android/chess/play/PlayActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$1$2;->this$1:Ljwtc/android/chess/play/PlayActivity$1;

    iget-object p1, p1, Ljwtc/android/chess/play/PlayActivity$1;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$300(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/engine/EngineApi;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/android/chess/engine/EngineApi;->play()V

    return-void
.end method
