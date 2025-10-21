.class Lcom/example/logintosee/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/logintosee/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/logintosee/MainActivity;

.field final synthetic val$finalSuccessText:Ljava/lang/String;

.field final synthetic val$password:Landroid/widget/TextView;

.field final synthetic val$salt:[B

.field final synthetic val$truePass:Ljava/lang/String;

.field final synthetic val$username:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/example/logintosee/MainActivity;Landroid/widget/TextView;[BLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/example/logintosee/MainActivity$1;->this$0:Lcom/example/logintosee/MainActivity;

    iput-object p2, p0, Lcom/example/logintosee/MainActivity$1;->val$password:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/example/logintosee/MainActivity$1;->val$salt:[B

    iput-object p4, p0, Lcom/example/logintosee/MainActivity$1;->val$username:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/example/logintosee/MainActivity$1;->val$truePass:Ljava/lang/String;

    iput-object p6, p0, Lcom/example/logintosee/MainActivity$1;->val$finalSuccessText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/example/logintosee/MainActivity$1;->val$password:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/example/logintosee/MainActivity$1;->this$0:Lcom/example/logintosee/MainActivity;

    iget-object v1, p0, Lcom/example/logintosee/MainActivity$1;->val$salt:[B

    invoke-static {v0, p1, v1}, Lcom/example/logintosee/MainActivity;->access$000(Lcom/example/logintosee/MainActivity;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/example/logintosee/MainActivity$1;->val$username:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "admin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/logintosee/MainActivity$1;->val$truePass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object p1, p0, Lcom/example/logintosee/MainActivity$1;->this$0:Lcom/example/logintosee/MainActivity;

    iget-object p0, p0, Lcom/example/logintosee/MainActivity$1;->val$finalSuccessText:Ljava/lang/String;

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/example/logintosee/MainActivity$1;->this$0:Lcom/example/logintosee/MainActivity;

    const-string v0, "Login Failure"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 77
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
