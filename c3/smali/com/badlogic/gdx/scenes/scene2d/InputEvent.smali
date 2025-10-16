.class public Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
.super Lcom/badlogic/gdx/scenes/scene2d/Event;
.source "InputEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    }
.end annotation


# instance fields
.field private button:I

.field private character:C

.field private keyCode:I

.field private pointer:I

.field private relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private scrollAmountX:F

.field private scrollAmountY:F

.field private stageX:F

.field private stageY:F

.field private touchFocus:Z

.field private type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->touchFocus:Z

    return-void
.end method


# virtual methods
.method public getButton()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    return v0
.end method

.method public getCharacter()C
    .locals 1

    .line 99
    iget-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->character:C

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->keyCode:I

    return v0
.end method

.method public getPointer()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->pointer:I

    return v0
.end method

.method public getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getScrollAmountX()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmountX:F

    return v0
.end method

.method public getScrollAmountY()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmountY:F

    return v0
.end method

.method public getStageX()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    return v0
.end method

.method public getStageY()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    return v0
.end method

.method public getTouchFocus()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->touchFocus:Z

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method

.method public isTouchFocusCancel()Z
    .locals 2

    .line 144
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reset()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->reset()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    return-void
.end method

.method public setButton(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    return-void
.end method

.method public setCharacter(C)V
    .locals 0

    .line 103
    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->character:C

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->keyCode:I

    return-void
.end method

.method public setPointer(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->pointer:I

    return-void
.end method

.method public setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setScrollAmountX(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmountX:F

    return-void
.end method

.method public setScrollAmountY(F)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmountY:F

    return-void
.end method

.method public setStageX(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    return-void
.end method

.method public setStageY(F)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    return-void
.end method

.method public setTouchFocus(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->touchFocus:Z

    return-void
.end method

.method public setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-void
.end method

.method public toCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 138
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
