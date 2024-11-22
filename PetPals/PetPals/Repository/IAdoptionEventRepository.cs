using PetPals.Model;
using System;
using System.Collections.Generic;

namespace PetPals.Repository
{
    internal interface IAdoptionEventRepository
    {
     
        List<AdoptionEvent> GetAllAdoptionEvents();
        AdoptionEvent GetAdoptionEventById(int eventId);
        void AddAdoptionEvent(AdoptionEvent adoptionEvent);
        void UpdateAdoptionEvent(AdoptionEvent adoptionEvent);
        void DeleteAdoptionEvent(int eventId);
    }
}
