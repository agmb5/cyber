.class public Lcom/dozingcatsoftware/bouncy/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static startForLevel(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dozingcatsoftware/bouncy/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "level"

    .line 69
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->requestWindowFeature(I)Z

    const/high16 v0, 0x7f030000

    .line 19
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->setContentView(I)V

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    const/high16 v0, 0x7f060000

    .line 27
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "level"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_rules"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    const-class v2, Lcom/dozingcatsoftware/bouncy/R$string;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const-string p1, "[TABLE_RULES]"

    .line 38
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f020001

    .line 40
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 44
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x19

    .line 45
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    .line 49
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, p1

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    const/high16 p1, 0x41900000    # 18.0f

    goto :goto_1

    :cond_2
    float-to-double v1, p1

    const-wide/high16 v3, 0x400c000000000000L    # 3.5

    cmpl-double p1, v1, v3

    if-lez p1, :cond_3

    const/high16 p1, 0x41800000    # 16.0f

    goto :goto_1

    :cond_3
    const/high16 p1, 0x41600000    # 14.0f

    .line 52
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
