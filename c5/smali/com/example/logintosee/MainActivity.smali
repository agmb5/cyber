.class public Lcom/example/logintosee/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/logintosee/MainActivity;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/example/logintosee/MainActivity;->getSecurePassword(Ljava/lang/String;[B)Ljava/lang/String;

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

    .line 130
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x2

    .line 131
    invoke-virtual {p0, v0, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 132
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 134
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;
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

    .line 118
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 121
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateIv()Ljavax/crypto/spec/IvParameterSpec;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 108
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 109
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v1
.end method

.method public static generateKey(I)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "AES"

    .line 101
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 103
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method private getSecurePassword(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string p0, "SHA-256"

    .line 86
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0x100

    const/16 v2, 0x10

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 41
    invoke-virtual {p0, p1}, Lcom/example/logintosee/MainActivity;->setContentView(I)V

    const p1, 0x7f0801da

    .line 43
    invoke-virtual {p0, p1}, Lcom/example/logintosee/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    const p1, 0x7f080151

    .line 44
    invoke-virtual {p0, p1}, Lcom/example/logintosee/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    const p1, 0x7f0800f9

    .line 46
    invoke-virtual {p0, p1}, Lcom/example/logintosee/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 48
    fill-array-data v3, :array_0

    const-string v1, "AES/CBC/PKCS5Padding"

    new-array v5, v0, [B

    .line 53
    fill-array-data v5, :array_1

    .line 54
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v7, 0x0

    const-string v8, "AES"

    invoke-direct {v6, v5, v7, v0, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    new-array v0, v0, [B

    .line 56
    fill-array-data v0, :array_2

    .line 57
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :try_start_0
    const-string v0, "CMEVTF/B+oFCNoiZ8mgrL1V951OD43LK0FN9MHnfiUk61bhpZ3Di8XtmP6Ghfv3v"

    .line 61
    invoke-static {v1, v0, v6, v5}, Lcom/example/logintosee/MainActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 68
    new-instance v7, Lcom/example/logintosee/MainActivity$1;

    const-string v5, "6a36319eaaf4d2a597679343b789d99d75fec6a69aa1fd985a75cc62e0e57b67"

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/example/logintosee/MainActivity$1;-><init>(Lcom/example/logintosee/MainActivity;Landroid/widget/TextView;[BLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :array_0
    .array-data 1
        0x72t
        0x34t
        0x75t
        0x37t
        0x78t
        0x21t
        0x41t
        0x25t
        0x44t
        0x2at
        0x47t
        0x2dt
        0x4bt
        0x61t
        0x50t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x40t
        0x4et
        0x63t
        0x52t
        0x66t
        0x55t
        0x6at
        0x58t
        0x6et
        0x32t
        0x72t
        0x35t
        0x75t
        0x38t
        0x78t
    .end array-data

    :array_2
    .array-data 1
        0x4at
        0x40t
        0x4et
        0x63t
        0x52t
        0x66t
        0x55t
        0x6at
        0x58t
        0x6et
        0x32t
        0x72t
        0x35t
        0x75t
        0x38t
        0x78t
    .end array-data
.end method
