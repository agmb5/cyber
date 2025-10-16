.class public Ljwtc/android/chess/ics/CustomCommands;
.super Ljwtc/android/chess/activities/BaseActivity;
.source "CustomCommands.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final DEFAULT_COMMANDS:Ljava/lang/String; = "[\"tell relay listgames\",\"tell endgamebot kbnk\",\"tell endgamebot help\",\"exl\",\"help commands\"]"

.field public static final TAG:Ljava/lang/String; = "CustomCommands"


# instance fields
.field _adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _listCommands:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljwtc/android/chess/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ics/CustomCommands;)Landroid/widget/ListView;
    .locals 0

    .line 24
    iget-object p0, p0, Ljwtc/android/chess/ics/CustomCommands;->_listCommands:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    .line 101
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/CustomCommands;->setContentView(I)V

    const p1, 0x7f080060

    .line 103
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/CustomCommands;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ljwtc/android/chess/ics/CustomCommands;->_listCommands:Landroid/widget/ListView;

    .line 104
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const v0, 0x7f0e00eb

    .line 150
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/CustomCommands;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f070165

    .line 151
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 44
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0e01c9

    .line 45
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/CustomCommands;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0e0048

    .line 47
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/CustomCommands;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljwtc/android/chess/ics/CustomCommands$1;

    invoke-direct {p4, p0, p3}, Ljwtc/android/chess/ics/CustomCommands$1;-><init>(Ljwtc/android/chess/ics/CustomCommands;I)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0e0047

    .line 81
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/CustomCommands;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljwtc/android/chess/ics/CustomCommands$2;

    invoke-direct {p4, p0, p3}, Ljwtc/android/chess/ics/CustomCommands$2;-><init>(Ljwtc/android/chess/ics/CustomCommands;I)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljwtc/android/chess/ics/CustomCommands;->finish()V

    return v1

    .line 161
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f0e00eb

    invoke-virtual {p0, v2}, Ljwtc/android/chess/ics/CustomCommands;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 165
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 166
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 168
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f0e00ec

    .line 173
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f0e003a

    new-instance v3, Ljwtc/android/chess/ics/CustomCommands$3;

    invoke-direct {v3, p0, v0}, Ljwtc/android/chess/ics/CustomCommands$3;-><init>(Ljwtc/android/chess/ics/CustomCommands;Landroid/widget/EditText;)V

    .line 174
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v1

    .line 191
    :cond_1
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 4

    .line 133
    invoke-virtual {p0}, Ljwtc/android/chess/ics/CustomCommands;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 136
    :goto_0
    iget-object v3, p0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 137
    iget-object v3, p0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ics_custom_commands"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    invoke-super {p0}, Ljwtc/android/chess/activities/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 110
    invoke-super {p0}, Ljwtc/android/chess/activities/BaseActivity;->onResume()V

    .line 112
    invoke-virtual {p0}, Ljwtc/android/chess/ics/CustomCommands;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    .line 117
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "ics_custom_commands"

    const-string v3, "[\"tell relay listgames\",\"tell endgamebot kbnk\",\"tell endgamebot help\",\"exl\",\"help commands\"]"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 119
    iget-object v2, p0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 126
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/ics/CustomCommands;->_listCommands:Landroid/widget/ListView;

    iget-object v1, p0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
