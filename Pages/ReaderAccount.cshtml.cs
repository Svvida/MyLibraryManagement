using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace MyLibraryManagement.Pages
{
    public class ReaderAccountModel : PageModel
    {
        public IActionResult OnPost()
        {
            return RedirectToPage("/ReaderAccount");
        }

    }
}
