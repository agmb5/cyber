.class Ljwtc/android/chess/start$3;
.super Ljava/lang/Object;
.source "start.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/start;->sendMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/start;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljwtc/android/chess/start;Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Ljwtc/android/chess/start$3;->this$0:Ljwtc/android/chess/start;

    iput-object p2, p0, Ljwtc/android/chess/start$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Ljwtc/android/chess/start$3;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 255
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Ljwtc/android/chess/start$3;->this$0:Ljwtc/android/chess/start;

    iget-object v0, p0, Ljwtc/android/chess/start$3;->val$message:Ljava/lang/String;

    invoke-static {p1, v0}, Ljwtc/android/chess/start;->access$402(Ljwtc/android/chess/start;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "start"

    const-string v0, "Sending message failed"

    .line 258
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
