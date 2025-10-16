.class Ljwtc/android/chess/ics/ICSMatchDlg$3;
.super Ljava/lang/Object;
.source "ICSMatchDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSMatchDlg;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSMatchDlg;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 135
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 137
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->dismiss()V

    .line 138
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$000(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    iget-object v0, v0, Ljwtc/android/chess/ics/ICSMatchDlg;->_rbSeek:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_2

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "seek "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$600(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "m "

    goto :goto_0

    :cond_0
    const-string v0, "a "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$800(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "f "

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    .line 142
    invoke-static {v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "match "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "rated "

    goto :goto_3

    :cond_3
    const-string p1, "unrated "

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    .line 149
    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1000(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    .line 150
    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1100(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "w "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 155
    :cond_4
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "b "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_5
    :goto_4
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "wild fr "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_6
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1000(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinTime"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1100(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinIncrement"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinVariant"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinColor"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "editRatingRangeMIN"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "editRatingRangeMAX"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "checkRated"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$600(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "checkManual"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "ICSMatchDlg"

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "challenge"

    .line 178
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$3;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1, v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1500(Ljwtc/android/chess/ics/ICSMatchDlg;Landroid/os/Bundle;)V

    return-void
.end method
