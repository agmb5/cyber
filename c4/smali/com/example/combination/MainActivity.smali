.class public Lcom/example/combination/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field public pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/example/combination/MainActivity;->pattern:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/example/combination/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/example/combination/MainActivity;->getdata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 139
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x2

    .line 140
    invoke-virtual {p0, v0, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 141
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p2

    .line 142
    invoke-virtual {p2, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 143
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private getdata(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance p1, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 121
    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    :goto_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 131
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 36
    invoke-virtual {p0, p1}, Lcom/example/combination/MainActivity;->setContentView(I)V

    .line 38
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const p1, 0x7f0801d3

    .line 41
    invoke-virtual {p0, p1}, Lcom/example/combination/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f080192

    .line 42
    invoke-virtual {p0, v0}, Lcom/example/combination/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f08000e

    .line 43
    invoke-virtual {p0, v1}, Lcom/example/combination/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f080078

    .line 44
    invoke-virtual {p0, v2}, Lcom/example/combination/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f0f001b

    .line 46
    invoke-virtual {p0, v3}, Lcom/example/combination/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    new-array v5, v4, [B

    .line 48
    fill-array-data v5, :array_0

    .line 49
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const v7, 0x7f0f007b

    invoke-virtual {p0, v7}, Lcom/example/combination/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v5, v8, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    new-array v4, v4, [B

    .line 51
    fill-array-data v4, :array_1

    .line 52
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 54
    new-instance v4, Lcom/example/combination/MainActivity$1;

    invoke-direct {v4, p0, v3, v6, v5}, Lcom/example/combination/MainActivity$1;-><init>(Lcom/example/combination/MainActivity;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance p1, Lcom/example/combination/MainActivity$2;

    invoke-direct {p1, p0, v3, v6, v5}, Lcom/example/combination/MainActivity$2;-><init>(Lcom/example/combination/MainActivity;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance p1, Lcom/example/combination/MainActivity$3;

    invoke-direct {p1, p0}, Lcom/example/combination/MainActivity$3;-><init>(Lcom/example/combination/MainActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance p1, Lcom/example/combination/MainActivity$4;

    invoke-direct {p1, p0, v3, v6, v5}, Lcom/example/combination/MainActivity$4;-><init>(Lcom/example/combination/MainActivity;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x4bt
        0x61t
        0x50t
        0x64t
        0x52t
        0x67t
        0x55t
        0x6bt
        0x58t
        0x70t
        0x32t
        0x73t
        0x35t
        0x76t
        0x38t
        0x79t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x66t
        0x54t
        0x68t
        0x57t
        0x6dt
        0x5at
        0x71t
        0x34t
        0x74t
        0x37t
        0x77t
        0x21t
        0x7at
        0x25t
        0x43t
    .end array-data
.end method
