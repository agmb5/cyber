.class public Ljwtc/android/chess/tools/ImportActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ImportActivity.java"

# interfaces
.implements Ljwtc/android/chess/tools/ImportListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _mode:I

.field protected _processing:Z

.field private _progress:Landroid/widget/ProgressBar;

.field private _tvWork:Landroid/widget/TextView;

.field private _tvWorkCnt:Landroid/widget/TextView;

.field private _tvWorkCntFail:Landroid/widget/TextView;

.field private importService:Ljwtc/android/chess/tools/ImportService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Ljwtc/android/chess/tools/ImportActivity;->importService:Ljwtc/android/chess/tools/ImportService;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Ljwtc/android/chess/tools/ImportActivity;->_mode:I

    const-string v0, "ImportActivity"

    .line 30
    iput-object v0, p0, Ljwtc/android/chess/tools/ImportActivity;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljwtc/android/chess/tools/ImportActivity$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/tools/ImportActivity$1;-><init>(Ljwtc/android/chess/tools/ImportActivity;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/tools/ImportActivity;)Ljwtc/android/chess/tools/ImportService;
    .locals 0

    .line 20
    iget-object p0, p0, Ljwtc/android/chess/tools/ImportActivity;->importService:Ljwtc/android/chess/tools/ImportService;

    return-object p0
.end method

.method static synthetic access$002(Ljwtc/android/chess/tools/ImportActivity;Ljwtc/android/chess/tools/ImportService;)Ljwtc/android/chess/tools/ImportService;
    .locals 0

    .line 20
    iput-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->importService:Ljwtc/android/chess/tools/ImportService;

    return-object p1
.end method

.method static synthetic access$100(Ljwtc/android/chess/tools/ImportActivity;)Landroid/net/Uri;
    .locals 0

    .line 20
    iget-object p0, p0, Ljwtc/android/chess/tools/ImportActivity;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Ljwtc/android/chess/tools/ImportActivity;)I
    .locals 0

    .line 20
    iget p0, p0, Ljwtc/android/chess/tools/ImportActivity;->_mode:I

    return p0
.end method


# virtual methods
.method public OnImportFatalError(I)V
    .locals 1

    .line 152
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_progress:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_tvWorkCnt:Landroid/widget/TextView;

    const-string v0, "An error occured, import failed"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public OnImportFinished(I)V
    .locals 1

    .line 145
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_progress:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p1, -0x1

    .line 146
    invoke-virtual {p0, p1}, Ljwtc/android/chess/tools/ImportActivity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportActivity;->finish()V

    return-void
.end method

.method public OnImportProgress(III)V
    .locals 2

    .line 139
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_tvWorkCnt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_tvWorkCntFail:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public OnImportStarted(I)V
    .locals 1

    .line 134
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_progress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public doToast(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 126
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 128
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 50
    invoke-virtual {p0, p1}, Ljwtc/android/chess/tools/ImportActivity;->setContentView(I)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_processing:Z

    const p1, 0x7f080091

    .line 54
    invoke-virtual {p0, p1}, Ljwtc/android/chess/tools/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_tvWork:Landroid/widget/TextView;

    const p1, 0x7f080092

    .line 55
    invoke-virtual {p0, p1}, Ljwtc/android/chess/tools/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_tvWorkCnt:Landroid/widget/TextView;

    const p1, 0x7f080093

    .line 56
    invoke-virtual {p0, p1}, Ljwtc/android/chess/tools/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_tvWorkCntFail:Landroid/widget/TextView;

    const p1, 0x7f08006a

    .line 57
    invoke-virtual {p0, p1}, Ljwtc/android/chess/tools/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ljwtc/android/chess/tools/ImportActivity;->_progress:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ImportActivity"

    const-string v1, "onDestroy"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportActivity;->importService:Ljwtc/android/chess/tools/ImportService;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p0}, Ljwtc/android/chess/tools/ImportService;->removeListener(Ljwtc/android/chess/tools/ImportListener;)V

    .line 96
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Ljwtc/android/chess/tools/ImportActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Ljwtc/android/chess/tools/ImportActivity;->importService:Ljwtc/android/chess/tools/ImportService;

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 112
    iget-boolean v0, p0, Ljwtc/android/chess/tools/ImportActivity;->_processing:Z

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Ljwtc/android/chess/tools/ImportActivity;->uri:Landroid/net/Uri;

    .line 116
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mode"

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljwtc/android/chess/tools/ImportActivity;->_mode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 120
    iput v0, p0, Ljwtc/android/chess/tools/ImportActivity;->_mode:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    const-string v0, "ImportActivity"

    const-string v1, "onStart"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 81
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportActivity;->importService:Ljwtc/android/chess/tools/ImportService;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljwtc/android/chess/tools/ImportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Ljwtc/android/chess/tools/ImportActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljwtc/android/chess/tools/ImportActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Could not import practice set"

    .line 83
    invoke-virtual {p0, v0}, Ljwtc/android/chess/tools/ImportActivity;->doToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
