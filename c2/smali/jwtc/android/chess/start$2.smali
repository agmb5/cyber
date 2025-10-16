.class Ljwtc/android/chess/start$2;
.super Ljava/lang/Object;
.source "start.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/start;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/start;


# direct methods
.method constructor <init>(Ljwtc/android/chess/start;)V
    .locals 0

    .line 119
    iput-object p1, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljwtc/android/chess/start;->access$202(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 124
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "start"

    .line 125
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const p5, 0x7f0e01ad

    invoke-virtual {p4, p5}, Ljwtc/android/chess/start;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/high16 p4, 0x20000

    if-eqz p3, :cond_0

    .line 127
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const-class p5, Ljwtc/android/chess/play/PlayActivity;

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p3, p2}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 130
    :cond_0
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const v0, 0x7f0e01ae

    invoke-virtual {p5, v0}, Ljwtc/android/chess/start;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 131
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const-class p5, Ljwtc/android/chess/practice/PracticeActivity;

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p3, p2}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 134
    :cond_1
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const v0, 0x7f0e01af

    invoke-virtual {p5, v0}, Ljwtc/android/chess/start;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 135
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const-class p5, Ljwtc/android/chess/puzzle/PuzzleActivity;

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p3, p2}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 138
    :cond_2
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const v0, 0x7f0e01a7

    invoke-virtual {p5, v0}, Ljwtc/android/chess/start;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 139
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const-class p4, Ljwtc/android/chess/HtmlActivity;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    sget-object p3, Ljwtc/android/chess/HtmlActivity;->HELP_MODE:Ljava/lang/String;

    const-string p4, "about"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p3, p2}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    :cond_3
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const v0, 0x7f0e01aa

    invoke-virtual {p5, v0}, Ljwtc/android/chess/start;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 143
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const-class p5, Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p3, p2}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 146
    :cond_4
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const v0, 0x7f0e01ac

    invoke-virtual {p5, v0}, Ljwtc/android/chess/start;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 147
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const-class p5, Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p3, p2}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    :cond_5
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const p5, 0x7f0e01a9

    invoke-virtual {p4, p5}, Ljwtc/android/chess/start;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 151
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const-class p4, Ljwtc/android/chess/ChessPreferences;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p3, p2, p1}, Ljwtc/android/chess/start;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 153
    :cond_6
    invoke-static {}, Ljwtc/android/chess/start;->access$200()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const p5, 0x7f0e00e6

    invoke-virtual {p4, p5}, Ljwtc/android/chess/start;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 154
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const-class p4, Ljwtc/android/chess/HtmlActivity;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    sget-object p3, Ljwtc/android/chess/HtmlActivity;->HELP_MODE:Ljava/lang/String;

    const-string p4, "help"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object p3, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p3, p2}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    iget-object p2, p0, Ljwtc/android/chess/start$2;->this$0:Ljwtc/android/chess/start;

    const p3, 0x7f0e01e5

    const/4 p4, 0x1

    invoke-static {p2, p3, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    const/16 p3, 0x50

    .line 160
    invoke-virtual {p2, p3, p1, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 161
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_0
    return-void
.end method
