.class public Ljwtc/android/chess/tools/AdvancedActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AdvancedActivity.java"


# static fields
.field protected static final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AdvancedActivity"


# instance fields
.field private _lvStart:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public doExport()V
    .locals 7

    .line 328
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/chess.pgn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    sget-object v2, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Ljwtc/chess/PGNColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljwtc/android/chess/tools/AdvancedActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, ""

    const/4 v4, 0x0

    .line 340
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pgn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 348
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 350
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 351
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const v0, 0x7f0e0144

    .line 354
    invoke-virtual {p0, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const v0, 0x7f0e007a

    .line 357
    invoke-virtual {p0, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doToast(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 368
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 370
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public hasPermission()Z
    .locals 3

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 315
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 318
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvancedActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 297
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 300
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "mode"

    .line 301
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-class p1, Ljwtc/android/chess/tools/ImportActivity;

    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, p3}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    invoke-virtual {p0}, Ljwtc/android/chess/tools/AdvancedActivity;->finish()V

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "res url"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0057

    .line 54
    invoke-virtual {p0, p1}, Ljwtc/android/chess/tools/AdvancedActivity;->setContentView(I)V

    const p1, 0x7f080063

    .line 56
    invoke-virtual {p0, p1}, Ljwtc/android/chess/tools/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity;->_lvStart:Landroid/widget/ListView;

    .line 60
    invoke-virtual {p0}, Ljwtc/android/chess/tools/AdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f020013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 62
    iget-object v0, p0, Ljwtc/android/chess/tools/AdvancedActivity;->_lvStart:Landroid/widget/ListView;

    new-instance v1, Ljwtc/android/chess/tools/AdvancedActivity$1;

    invoke-direct {v1, p0, p1}, Ljwtc/android/chess/tools/AdvancedActivity$1;-><init>(Ljwtc/android/chess/tools/AdvancedActivity;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 288
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 285
    :cond_0
    invoke-virtual {p0}, Ljwtc/android/chess/tools/AdvancedActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
