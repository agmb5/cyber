.class public Ljwtc/android/chess/activities/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field protected fVolume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Ljwtc/android/chess/activities/BaseActivity;->fVolume:F

    return-void
.end method


# virtual methods
.method public doToast(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 49
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 51
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "ChessPlayer"

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Ljwtc/android/chess/activities/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 29
    invoke-virtual {p0}, Ljwtc/android/chess/activities/BaseActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wakeLock"

    const/4 v2, 0x1

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, Ljwtc/android/chess/activities/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    const-string v1, "fullScreen"

    .line 35
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Ljwtc/android/chess/activities/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 41
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public vibration(I)V
    .locals 6

    const/16 v0, 0xc8

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    const/16 v1, 0xc8

    :goto_0
    const/4 p1, 0x4

    :try_start_0
    new-array p1, p1, [J

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    aput-wide v4, p1, v3

    int-to-long v3, v0

    aput-wide v3, p1, v2

    const/4 v0, 0x2

    const-wide/16 v2, 0x64

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    int-to-long v1, v1

    aput-wide v1, p1, v0

    const-string v0, "vibrator"

    .line 66
    invoke-virtual {p0, v0}, Ljwtc/android/chess/activities/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, -0x1

    .line 67
    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "BaseActivity"

    const-string v1, "vibrator process error"

    .line 69
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
