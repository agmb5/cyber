.class Ljwtc/android/chess/play/PlayActivity$1;
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

    .line 112
    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity$1;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 114
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$1;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$000(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/chess/JNI;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/chess/JNI;->isEnded()I

    move-result p1

    if-nez p1, :cond_1

    .line 115
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$1;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$100(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/chess/JNI;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p1

    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity$1;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {v0}, Ljwtc/android/chess/play/PlayActivity;->access$200(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;

    move-result-object v0

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 116
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity$1;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity$1;->this$0:Ljwtc/android/chess/play/PlayActivity;

    const v1, 0x7f0e01c6

    .line 117
    invoke-virtual {v0, v1}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0e0029

    new-instance v1, Ljwtc/android/chess/play/PlayActivity$1$1;

    invoke-direct {v1, p0}, Ljwtc/android/chess/play/PlayActivity$1$1;-><init>(Ljwtc/android/chess/play/PlayActivity$1;)V

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0e002b

    .line 123
    new-instance v1, Ljwtc/android/chess/play/PlayActivity$1$2;

    invoke-direct {v1, p0}, Ljwtc/android/chess/play/PlayActivity$1$2;-><init>(Ljwtc/android/chess/play/PlayActivity$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity$1;->this$0:Ljwtc/android/chess/play/PlayActivity;

    invoke-static {p1}, Ljwtc/android/chess/play/PlayActivity;->access$300(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/engine/EngineApi;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/android/chess/engine/EngineApi;->play()V

    :cond_1
    :goto_0
    return-void
.end method
