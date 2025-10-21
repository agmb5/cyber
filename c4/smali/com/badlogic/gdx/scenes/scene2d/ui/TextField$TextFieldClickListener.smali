.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFieldClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkFocusTraversal(C)Z
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    :cond_0
    sget-boolean p1, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isIos:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2

    .line 832
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->getTapCount()I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 833
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 835
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->wordUnderCursor(F)[I

    move-result-object p2

    .line 836
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p3, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 838
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    :cond_2
    return-void
.end method

.method protected goEnd(Z)V
    .locals 1

    .line 877
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void
.end method

.method protected goHome(Z)V
    .locals 1

    .line 873
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 10

    .line 881
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 883
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focused:Z

    iput-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 884
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 885
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focused:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    .line 887
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasKeyboardFocus()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 890
    :cond_2
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 891
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7c

    if-eqz p1, :cond_9

    const/16 p1, 0x1d

    if-eq p2, p1, :cond_8

    const/16 p1, 0x1f

    if-eq p2, p1, :cond_7

    const/16 p1, 0x32

    if-eq p2, p1, :cond_6

    const/16 p1, 0x34

    if-eq p2, p1, :cond_5

    const/16 p1, 0x36

    if-eq p2, p1, :cond_4

    if-eq p2, v3, :cond_7

    const/4 p1, 0x0

    const/4 v4, 0x0

    goto :goto_2

    .line 911
    :cond_4
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 912
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->undoText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    .line 913
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-object p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->undoText:Ljava/lang/String;

    .line 914
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    return v1

    .line 905
    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cut(Z)V

    return v1

    .line 897
    :cond_6
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    invoke-interface {v4}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    goto :goto_1

    .line 902
    :cond_7
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    return v1

    .line 908
    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    return v1

    :cond_9
    const/4 p1, 0x0

    :goto_1
    const/4 v4, 0x1

    .line 921
    :goto_2
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v5

    const/16 v6, 0x16

    const/16 v7, 0x15

    const/16 v8, 0x7b

    const/4 v9, 0x3

    if-eqz v5, :cond_10

    const/16 v5, 0x70

    if-eq p2, v5, :cond_b

    if-eq p2, v3, :cond_a

    goto :goto_3

    .line 924
    :cond_a
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v5, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/utils/Clipboard;

    invoke-interface {v5}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste(Ljava/lang/String;Z)V

    goto :goto_3

    .line 927
    :cond_b
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cut(Z)V

    .line 933
    :goto_3
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-eq p2, v9, :cond_f

    if-eq p2, v8, :cond_e

    if-eq p2, v7, :cond_d

    if-eq p2, v6, :cond_c

    goto :goto_6

    .line 943
    :cond_c
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    goto :goto_4

    .line 938
    :cond_d
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    :goto_4
    const/4 p1, 0x1

    goto :goto_5

    .line 952
    :cond_e
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goEnd(Z)V

    goto :goto_5

    .line 948
    :cond_f
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goHome(Z)V

    .line 958
    :goto_5
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v2, :cond_15

    .line 959
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 960
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    goto :goto_7

    :cond_10
    if-eq p2, v9, :cond_14

    if-eq p2, v8, :cond_13

    if-eq p2, v7, :cond_12

    if-eq p2, v6, :cond_11

    :goto_6
    move v1, p1

    goto :goto_9

    .line 973
    :cond_11
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 974
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    goto :goto_8

    .line 967
    :cond_12
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 968
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    goto :goto_8

    .line 984
    :cond_13
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goEnd(Z)V

    .line 985
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    goto :goto_7

    .line 979
    :cond_14
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goHome(Z)V

    .line 980
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    :cond_15
    :goto_7
    move v1, p1

    :goto_8
    const/4 v4, 0x1

    .line 991
    :goto_9
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-eqz v1, :cond_16

    .line 993
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->scheduleKeyRepeatTask(I)V

    :cond_16
    return v4
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 13

    .line 1021
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xd

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    const/16 v1, 0x20

    if-ge p2, v1, :cond_1

    return v0

    .line 1034
    :cond_1
    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasKeyboardFocus()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1036
    :cond_2
    sget-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x3f

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 1038
    :cond_3
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->checkFocusTraversal(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1039
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->next(Z)V

    goto/16 :goto_b

    :cond_4
    if-eq p2, p1, :cond_6

    const/16 p1, 0xa

    if-ne p2, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v1, 0x7f

    if-ne p2, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    const/16 v3, 0x8

    if-ne p2, v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 1044
    :goto_3
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eqz p1, :cond_9

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->writeEnters:Z

    goto :goto_5

    :cond_9
    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-nez v3, :cond_d

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v5, 0x1

    :goto_7
    if-nez v4, :cond_e

    if-eqz v5, :cond_1a

    .line 1047
    :cond_e
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 1048
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-eqz v5, :cond_11

    .line 1050
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v8, :cond_f

    .line 1051
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v3

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto/16 :goto_8

    :cond_f
    if-eqz v3, :cond_10

    .line 1053
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-lez v3, :cond_10

    .line 1054
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    sub-int/2addr v10, v2

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v12, v11, -0x1

    iput v12, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 1055
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v8, 0x0

    iput v8, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    :cond_10
    if-eqz v1, :cond_11

    .line 1057
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_11

    .line 1058
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    :cond_11
    :goto_8
    if-eqz v4, :cond_17

    if-nez v5, :cond_17

    if-nez p1, :cond_12

    .line 1064
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-interface {v1, v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 1065
    :cond_12
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    :goto_9
    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->withinMaxLength(I)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 1066
    :cond_14
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    :cond_15
    if-eqz p1, :cond_16

    const-string p1, "\n"

    goto :goto_a

    .line 1067
    :cond_16
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 1068
    :goto_a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 1070
    :cond_17
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->undoText:Ljava/lang/String;

    .line 1071
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->changeText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x2ee

    sub-long v3, v0, v3

    .line 1073
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-wide v7, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastChangeTime:J

    cmp-long p1, v3, v7

    if-lez p1, :cond_18

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-object v6, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->undoText:Ljava/lang/String;

    .line 1074
    :cond_18
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-wide v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastChangeTime:J

    .line 1075
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    goto :goto_b

    .line 1077
    :cond_19
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput v7, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 1080
    :cond_1a
    :goto_b
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)V

    :cond_1b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    .line 1006
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1007
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method protected scheduleKeyRepeatTask(I)V
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->keycode:I

    if-eq v0, p1, :cond_1

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->keycode:I

    .line 1000
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    .line 1001
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    sget v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatInitialTime:F

    sget v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTime:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_1
    return-void
.end method

.method protected setCursorPosition(FF)V
    .locals 1

    .line 865
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->letterUnderCursor(F)I

    move-result p1

    iput p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 867
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focused:Z

    iput-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 868
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 869
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focused:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTask:Lcom/badlogic/gdx/utils/Timer$Task;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    invoke-static {p1, p2, v0}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1

    .line 842
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    return v0

    .line 844
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    return p4

    .line 845
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    .line 846
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 847
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 848
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 849
    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    invoke-interface {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;->show(Z)V

    .line 850
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    return p4
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    .line 855
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 856
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 861
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return-void
.end method
