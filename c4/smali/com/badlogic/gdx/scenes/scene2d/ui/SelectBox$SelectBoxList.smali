.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.source "SelectBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectBoxList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;"
    }
.end annotation


# instance fields
.field private hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field final list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field maxListCount:I

.field private previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final stagePosition:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<",
            "TT;>;)V"
        }
    .end annotation

    .line 408
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 402
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    .line 409
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setOverscroll(ZZ)V

    .line 412
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setFadeScrollBars(Z)V

    const/4 v1, 0x1

    .line 413
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setScrollingDisabled(ZZ)V

    .line 415
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;

    iget-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {v0, p0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    .line 420
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 421
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTypeToSelect(Z)V

    .line 422
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 424
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$2;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 440
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 446
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$4;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$4;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 0

    .line 549
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->act(F)V

    .line 550
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->toFront()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->temp:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 544
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->temp:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    .line 545
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 529
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 531
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 532
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 533
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 534
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 535
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 538
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->clearActions()V

    .line 539
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->onHide(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 2

    .line 554
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 557
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 559
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    return-void
.end method

.method public show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 12

    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemHeight()F

    move-result v0

    .line 482
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, v0

    .line 483
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_2

    .line 484
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 485
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_3

    .line 486
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 488
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 489
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    sub-float/2addr v3, v2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    cmpl-float v5, v1, v2

    if-lez v5, :cond_5

    cmpl-float v5, v3, v2

    if-lez v5, :cond_4

    const/4 v4, 0x0

    .line 494
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 500
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setY(F)V

    goto :goto_2

    .line 502
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setY(F)V

    .line 503
    :goto_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->stagePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setX(F)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setHeight(F)V

    .line 505
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->validate()V

    .line 506
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getPrefWidth()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getWidth()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 507
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getPrefHeight()F

    move-result v3

    cmpl-float v1, v3, v1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->disableY:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getScrollBarWidth()F

    move-result v1

    add-float/2addr v2, v1

    .line 508
    :cond_7
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setWidth(F)V

    .line 510
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->validate()V

    const/4 v6, 0x0

    .line 511
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelectedIndex()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v7, v1, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->scrollTo(FFFFZZ)V

    .line 512
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->updateVisualScroll()V

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 515
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 516
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 517
    :cond_8
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 519
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 520
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 521
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->clearActions()V

    .line 522
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1, p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->onShow(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    return-void
.end method
