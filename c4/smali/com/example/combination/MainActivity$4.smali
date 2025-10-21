.class Lcom/example/combination/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/combination/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/combination/MainActivity;

.field final synthetic val$algorithm:Ljava/lang/String;

.field final synthetic val$k:Ljavax/crypto/SecretKey;

.field final synthetic val$vi_para:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method constructor <init>(Lcom/example/combination/MainActivity;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/example/combination/MainActivity$4;->this$0:Lcom/example/combination/MainActivity;

    iput-object p2, p0, Lcom/example/combination/MainActivity$4;->val$algorithm:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/combination/MainActivity$4;->val$k:Ljavax/crypto/SecretKey;

    iput-object p4, p0, Lcom/example/combination/MainActivity$4;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 99
    iget-object p1, p0, Lcom/example/combination/MainActivity$4;->this$0:Lcom/example/combination/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/combination/MainActivity$4;->this$0:Lcom/example/combination/MainActivity;

    iget-object v1, v1, Lcom/example/combination/MainActivity;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/example/combination/MainActivity;->pattern:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/example/combination/MainActivity$4;->this$0:Lcom/example/combination/MainActivity;

    iget-object p1, p1, Lcom/example/combination/MainActivity;->pattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    .line 102
    :try_start_0
    iget-object p1, p0, Lcom/example/combination/MainActivity$4;->this$0:Lcom/example/combination/MainActivity;

    iget-object v0, p0, Lcom/example/combination/MainActivity$4;->val$algorithm:Ljava/lang/String;

    invoke-static {}, Lcom/example/combination/ApiHelper1;->getthis1()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/combination/MainActivity$4;->val$k:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/example/combination/MainActivity$4;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v0, v1, v2, v3}, Lcom/example/combination/MainActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/example/combination/MainActivity;->access$000(Lcom/example/combination/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/example/combination/MainActivity$4;->this$0:Lcom/example/combination/MainActivity;

    iget-object v0, v0, Lcom/example/combination/MainActivity;->pattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/example/combination/MainActivity$4;->this$0:Lcom/example/combination/MainActivity;

    iget-object v0, p0, Lcom/example/combination/MainActivity$4;->val$algorithm:Ljava/lang/String;

    invoke-static {}, Lcom/example/combination/ApiHelper2;->getthis2()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/combination/MainActivity$4;->val$k:Ljavax/crypto/SecretKey;

    iget-object p0, p0, Lcom/example/combination/MainActivity$4;->val$vi_para:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v0, v1, v2, p0}, Lcom/example/combination/MainActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/example/combination/MainActivity;->access$000(Lcom/example/combination/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
